/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<155 AND p.CommentCount>13 AND p.CommentCount<27 AND u.DownVotes>148 AND u.DownVotes<1198 AND v.CreationDate>'2014-01-19 13:45:14'::timestamp AND v.CreationDate<'2014-09-03 20:27:48'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2010-12-04 12:07:21'::timestamp AND b.Date<'2014-05-10 20:01:00'::timestamp;

