/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>94 AND p.Score<140 AND p.CommentCount>5 AND p.CommentCount<18 AND u.DownVotes>484 AND u.DownVotes<1316 AND v.CreationDate>'2012-02-15 16:04:43'::timestamp AND v.CreationDate<'2013-09-02 05:41:56'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2010-11-02 03:49:56'::timestamp AND b.Date<'2012-06-06 19:45:02'::timestamp;

