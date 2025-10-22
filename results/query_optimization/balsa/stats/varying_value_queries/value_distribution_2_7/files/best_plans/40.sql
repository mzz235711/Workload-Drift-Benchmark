/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>19 AND p.Score<60 AND p.CommentCount>4 AND p.CommentCount<8 AND u.DownVotes>675 AND u.DownVotes<803 AND v.CreationDate>'2009-06-19 21:38:53'::timestamp AND v.CreationDate<'2013-11-25 14:26:28'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2010-09-24 23:30:48'::timestamp AND b.Date<'2012-09-13 20:20:48'::timestamp;

