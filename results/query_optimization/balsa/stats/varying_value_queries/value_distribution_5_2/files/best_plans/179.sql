/*+ HashJoin(v p b u)
 HashJoin(b u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 SeqScan(b)
 IndexScan(u)
 Leading(((v p) (b u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>48 AND p.Score<113 AND p.CommentCount>5 AND p.CommentCount<21 AND u.DownVotes>391 AND u.DownVotes<1056 AND v.CreationDate>'2010-01-18 13:26:21'::timestamp AND v.CreationDate<'2013-11-30 10:16:50'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2010-08-11 12:07:12'::timestamp AND b.Date<'2014-02-10 06:51:27'::timestamp;

