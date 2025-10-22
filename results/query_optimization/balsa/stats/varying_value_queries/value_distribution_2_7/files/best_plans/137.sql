/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>67 AND p.Score<165 AND p.CommentCount>3 AND p.CommentCount<35 AND u.DownVotes>57 AND u.DownVotes<973 AND v.CreationDate>'2011-10-23 23:20:36'::timestamp AND v.CreationDate<'2012-03-20 06:06:41'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-01-05 23:19:18'::timestamp AND b.Date<'2012-08-28 04:08:47'::timestamp;

