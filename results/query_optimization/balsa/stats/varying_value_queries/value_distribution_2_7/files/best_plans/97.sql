/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>104 AND p.Score<130 AND p.CommentCount>0 AND p.CommentCount<40 AND u.DownVotes>605 AND u.DownVotes<1022 AND v.CreationDate>'2012-11-03 18:21:08'::timestamp AND v.CreationDate<'2014-05-17 19:15:48'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2012-09-23 20:34:12'::timestamp AND b.Date<'2014-01-14 08:25:41'::timestamp;

