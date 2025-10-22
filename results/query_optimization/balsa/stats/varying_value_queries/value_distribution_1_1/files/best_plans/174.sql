/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<34 AND p.CommentCount>1 AND p.CommentCount<28 AND u.DownVotes>454 AND u.DownVotes<844 AND v.CreationDate>'2010-08-12 19:47:19'::timestamp AND v.CreationDate<'2012-12-13 01:31:59'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2012-03-29 06:42:07'::timestamp AND b.Date<'2013-10-06 23:39:46'::timestamp;

