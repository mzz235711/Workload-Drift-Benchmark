/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<158 AND p.CommentCount>6 AND p.CommentCount<44 AND u.DownVotes>285 AND u.DownVotes<1859 AND v.CreationDate>'2010-07-17 04:06:36'::timestamp AND v.CreationDate<'2013-09-15 20:37:37'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2012-08-14 13:28:04'::timestamp AND b.Date<'2013-06-15 10:35:36'::timestamp;

