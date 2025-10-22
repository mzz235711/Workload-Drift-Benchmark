/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>41 AND p.Score<80 AND p.CommentCount>1 AND p.CommentCount<27 AND u.DownVotes>270 AND u.DownVotes<1861 AND v.CreationDate>'2011-01-02 08:26:22'::timestamp AND v.CreationDate<'2013-07-21 08:11:14'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<12 AND b.Date>'2013-10-05 10:19:04'::timestamp AND b.Date<'2014-07-07 17:55:02'::timestamp;

