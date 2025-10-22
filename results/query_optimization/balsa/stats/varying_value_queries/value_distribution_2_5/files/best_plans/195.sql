/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<139 AND p.CommentCount>19 AND p.CommentCount<25 AND u.DownVotes>48 AND u.DownVotes<1845 AND v.CreationDate>'2009-11-11 09:49:58'::timestamp AND v.CreationDate<'2014-09-12 12:27:14'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2010-10-31 01:23:47'::timestamp AND b.Date<'2012-12-11 21:18:54'::timestamp;

