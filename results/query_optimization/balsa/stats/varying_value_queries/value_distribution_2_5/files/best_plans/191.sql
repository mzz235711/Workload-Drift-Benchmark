/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>54 AND p.Score<152 AND p.CommentCount>0 AND p.CommentCount<17 AND u.DownVotes>157 AND u.DownVotes<1786 AND v.CreationDate>'2012-07-09 03:49:43'::timestamp AND v.CreationDate<'2013-07-18 01:57:37'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2012-11-26 08:22:31'::timestamp AND b.Date<'2014-01-16 23:33:32'::timestamp;

