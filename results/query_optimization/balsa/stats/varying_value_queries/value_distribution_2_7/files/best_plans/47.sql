/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<73 AND p.CommentCount>5 AND p.CommentCount<15 AND u.DownVotes>296 AND u.DownVotes<629 AND v.CreationDate>'2009-04-29 02:43:13'::timestamp AND v.CreationDate<'2013-11-05 19:58:04'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2013-03-10 09:48:13'::timestamp AND b.Date<'2013-10-17 15:55:45'::timestamp;

