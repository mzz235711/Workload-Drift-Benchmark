/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<42 AND p.CommentCount>5 AND p.CommentCount<10 AND u.DownVotes>129 AND u.DownVotes<425 AND v.CreationDate>'2011-04-15 12:18:41'::timestamp AND v.CreationDate<'2012-05-15 09:07:05'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2012-10-05 13:21:00'::timestamp AND b.Date<'2013-07-15 14:03:24'::timestamp;

