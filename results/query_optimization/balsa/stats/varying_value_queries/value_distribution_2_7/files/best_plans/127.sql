/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<32 AND p.CommentCount>20 AND p.CommentCount<34 AND u.DownVotes>0 AND u.DownVotes<528 AND v.CreationDate>'2011-07-05 17:25:45'::timestamp AND v.CreationDate<'2014-05-21 05:06:19'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2010-12-20 10:25:01'::timestamp AND b.Date<'2014-01-13 21:08:53'::timestamp;

