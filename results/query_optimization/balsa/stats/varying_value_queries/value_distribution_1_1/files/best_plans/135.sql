/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>58 AND p.Score<110 AND p.CommentCount>3 AND p.CommentCount<32 AND u.DownVotes>33 AND u.DownVotes<79 AND v.CreationDate>'2010-10-16 13:54:00'::timestamp AND v.CreationDate<'2012-09-23 20:15:41'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2013-02-02 14:14:20'::timestamp AND b.Date<'2014-06-10 00:41:49'::timestamp;

