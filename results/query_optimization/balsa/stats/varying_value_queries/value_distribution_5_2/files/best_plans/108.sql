/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>55 AND p.Score<154 AND p.CommentCount>5 AND p.CommentCount<27 AND u.DownVotes>11 AND u.DownVotes<1510 AND v.CreationDate>'2010-08-09 02:34:48'::timestamp AND v.CreationDate<'2011-05-21 09:56:43'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2011-02-25 10:10:44'::timestamp AND b.Date<'2013-05-09 21:48:35'::timestamp;

