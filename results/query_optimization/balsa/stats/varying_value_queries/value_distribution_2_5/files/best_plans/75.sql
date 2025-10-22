/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>67 AND p.Score<113 AND p.CommentCount>12 AND p.CommentCount<23 AND u.DownVotes>48 AND u.DownVotes<1264 AND v.CreationDate>'2012-07-09 17:57:47'::timestamp AND v.CreationDate<'2012-09-16 03:30:12'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-06-10 06:14:47'::timestamp AND b.Date<'2012-06-20 18:12:33'::timestamp;

