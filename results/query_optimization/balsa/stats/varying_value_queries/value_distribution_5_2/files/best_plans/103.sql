/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<107 AND p.CommentCount>7 AND p.CommentCount<24 AND u.DownVotes>388 AND u.DownVotes<1529 AND v.CreationDate>'2011-09-03 10:12:38'::timestamp AND v.CreationDate<'2013-06-10 18:00:09'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<13 AND b.Date>'2012-04-25 17:30:56'::timestamp AND b.Date<'2012-09-08 23:43:43'::timestamp;

