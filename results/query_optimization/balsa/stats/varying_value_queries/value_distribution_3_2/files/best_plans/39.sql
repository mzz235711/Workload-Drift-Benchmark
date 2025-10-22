/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>47 AND p.Score<78 AND p.CommentCount>4 AND p.CommentCount<35 AND u.DownVotes>370 AND u.DownVotes<1355 AND v.CreationDate>'2010-05-10 22:21:56'::timestamp AND v.CreationDate<'2014-01-19 06:58:51'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<9 AND b.Date>'2014-05-25 00:18:22'::timestamp AND b.Date<'2014-07-27 15:15:30'::timestamp;

