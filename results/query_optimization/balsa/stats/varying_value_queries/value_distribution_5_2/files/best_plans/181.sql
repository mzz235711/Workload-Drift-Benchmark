/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<177 AND p.CommentCount>26 AND p.CommentCount<37 AND u.DownVotes>92 AND u.DownVotes<733 AND v.CreationDate>'2012-01-20 06:33:52'::timestamp AND v.CreationDate<'2013-04-12 12:13:31'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2012-04-24 04:55:54'::timestamp AND b.Date<'2013-01-11 15:25:52'::timestamp;

