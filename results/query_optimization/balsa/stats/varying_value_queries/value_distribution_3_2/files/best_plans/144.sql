/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>40 AND p.Score<146 AND p.CommentCount>2 AND p.CommentCount<24 AND u.DownVotes>15 AND u.DownVotes<788 AND v.CreationDate>'2010-02-05 06:01:25'::timestamp AND v.CreationDate<'2011-02-28 19:09:13'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2011-03-07 08:07:09'::timestamp AND b.Date<'2012-12-14 18:20:26'::timestamp;

