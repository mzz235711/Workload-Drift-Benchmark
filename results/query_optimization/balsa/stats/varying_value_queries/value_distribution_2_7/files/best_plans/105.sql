/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<62 AND p.CommentCount>5 AND p.CommentCount<17 AND u.DownVotes>421 AND u.DownVotes<845 AND v.CreationDate>'2012-01-20 15:45:26'::timestamp AND v.CreationDate<'2014-04-25 12:26:51'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2013-12-01 10:28:05'::timestamp AND b.Date<'2014-02-06 17:18:23'::timestamp;

