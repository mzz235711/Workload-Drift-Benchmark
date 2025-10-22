/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>12 AND p.Score<144 AND p.CommentCount>1 AND p.CommentCount<27 AND u.DownVotes>246 AND u.DownVotes<1296 AND v.CreationDate>'2011-03-15 10:40:49'::timestamp AND v.CreationDate<'2013-09-11 12:40:43'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2011-06-13 05:37:41'::timestamp AND b.Date<'2012-06-16 14:31:05'::timestamp;

