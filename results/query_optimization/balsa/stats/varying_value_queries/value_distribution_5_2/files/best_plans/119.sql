/*+ HashJoin(v u p b)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading((v ((u p) b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>51 AND p.Score<90 AND p.CommentCount>0 AND p.CommentCount<11 AND u.DownVotes>60 AND u.DownVotes<1656 AND v.CreationDate>'2010-11-29 10:28:59'::timestamp AND v.CreationDate<'2011-01-21 12:58:50'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2013-01-05 03:24:04'::timestamp AND b.Date<'2014-03-11 23:02:55'::timestamp;

