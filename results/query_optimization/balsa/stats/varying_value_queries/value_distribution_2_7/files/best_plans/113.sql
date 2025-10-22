/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<118 AND p.CommentCount>12 AND p.CommentCount<25 AND u.DownVotes>235 AND u.DownVotes<1214 AND v.CreationDate>'2010-03-30 21:59:14'::timestamp AND v.CreationDate<'2012-05-01 15:25:37'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-02-14 20:39:38'::timestamp AND b.Date<'2013-03-02 00:20:27'::timestamp;

