/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<46 AND p.CommentCount>12 AND p.CommentCount<22 AND u.DownVotes>711 AND u.DownVotes<1369 AND v.CreationDate>'2013-04-18 19:16:39'::timestamp AND v.CreationDate<'2014-07-29 00:39:14'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2010-12-14 13:15:38'::timestamp AND b.Date<'2011-02-22 09:09:10'::timestamp;

