/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<165 AND p.CommentCount>2 AND p.CommentCount<16 AND u.DownVotes>478 AND u.DownVotes<1523 AND v.CreationDate>'2009-08-28 10:52:48'::timestamp AND v.CreationDate<'2013-11-05 19:22:49'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2012-05-28 01:39:50'::timestamp AND b.Date<'2013-02-23 15:14:28'::timestamp;

