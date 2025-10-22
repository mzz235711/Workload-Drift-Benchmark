/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<114 AND p.CommentCount>7 AND p.CommentCount<21 AND u.DownVotes>757 AND u.DownVotes<1908 AND v.CreationDate>'2010-07-16 04:18:46'::timestamp AND v.CreationDate<'2014-07-14 00:18:09'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2010-07-24 06:46:25'::timestamp AND b.Date<'2012-11-03 07:39:44'::timestamp;

