/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 MergeJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>26 AND p.Score<178 AND p.CommentCount>1 AND p.CommentCount<9 AND u.DownVotes>452 AND u.DownVotes<980 AND v.CreationDate>'2010-10-17 00:00:20'::timestamp AND v.CreationDate<'2014-02-28 20:00:17'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2012-06-28 21:59:55'::timestamp AND b.Date<'2013-03-13 01:48:29'::timestamp;

