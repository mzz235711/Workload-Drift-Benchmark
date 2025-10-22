/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>39 AND p.Score<62 AND p.CommentCount>7 AND p.CommentCount<28 AND u.DownVotes>22 AND u.DownVotes<1478 AND v.CreationDate>'2009-08-22 23:49:26'::timestamp AND v.CreationDate<'2014-09-03 20:36:33'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2010-08-06 06:32:35'::timestamp AND b.Date<'2011-09-14 18:09:04'::timestamp;

