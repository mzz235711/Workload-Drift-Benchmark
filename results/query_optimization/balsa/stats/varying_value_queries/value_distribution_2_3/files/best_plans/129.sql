/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<116 AND p.CommentCount>3 AND p.CommentCount<20 AND u.DownVotes>259 AND u.DownVotes<1299 AND v.CreationDate>'2010-01-25 14:46:27'::timestamp AND v.CreationDate<'2012-05-14 05:07:57'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2011-08-11 04:36:47'::timestamp AND b.Date<'2012-05-05 17:35:17'::timestamp;

