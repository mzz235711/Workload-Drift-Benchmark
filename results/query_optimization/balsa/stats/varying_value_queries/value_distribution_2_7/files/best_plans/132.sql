/*+ MergeJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<147 AND p.CommentCount>5 AND p.CommentCount<31 AND u.DownVotes>59 AND u.DownVotes<850 AND v.CreationDate>'2010-01-07 03:07:43'::timestamp AND v.CreationDate<'2010-12-05 13:53:05'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-03-13 15:23:33'::timestamp AND b.Date<'2013-06-03 19:33:24'::timestamp;

