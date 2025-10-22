/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<89 AND p.CommentCount>6 AND p.CommentCount<41 AND u.DownVotes>620 AND u.DownVotes<1124 AND v.CreationDate>'2010-07-15 02:13:24'::timestamp AND v.CreationDate<'2013-07-19 09:07:49'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2013-01-13 00:51:21'::timestamp AND b.Date<'2014-04-19 15:06:42'::timestamp;

