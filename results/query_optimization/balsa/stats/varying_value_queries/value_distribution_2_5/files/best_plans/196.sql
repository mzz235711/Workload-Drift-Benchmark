/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<166 AND p.CommentCount>9 AND p.CommentCount<41 AND u.DownVotes>307 AND u.DownVotes<711 AND v.CreationDate>'2011-03-04 11:18:48'::timestamp AND v.CreationDate<'2013-09-16 08:45:55'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2013-11-18 13:38:58'::timestamp AND b.Date<'2014-07-29 03:09:13'::timestamp;

