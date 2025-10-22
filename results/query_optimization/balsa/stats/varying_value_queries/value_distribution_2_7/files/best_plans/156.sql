/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<19 AND p.CommentCount>5 AND p.CommentCount<10 AND u.DownVotes>551 AND u.DownVotes<1067 AND v.CreationDate>'2011-05-03 13:15:31'::timestamp AND v.CreationDate<'2014-04-19 12:41:42'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-12-16 03:29:35'::timestamp AND b.Date<'2014-07-09 14:28:23'::timestamp;

