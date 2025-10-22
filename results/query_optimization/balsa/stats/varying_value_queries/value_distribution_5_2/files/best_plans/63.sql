/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>66 AND p.Score<83 AND p.CommentCount>4 AND p.CommentCount<24 AND u.DownVotes>642 AND u.DownVotes<1542 AND v.CreationDate>'2012-04-08 03:27:21'::timestamp AND v.CreationDate<'2014-08-12 12:16:53'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2013-03-18 20:20:15'::timestamp AND b.Date<'2013-11-09 13:33:39'::timestamp;

