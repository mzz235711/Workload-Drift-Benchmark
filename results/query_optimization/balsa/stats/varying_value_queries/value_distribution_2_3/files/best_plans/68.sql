/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<152 AND p.CommentCount>19 AND p.CommentCount<21 AND u.DownVotes>737 AND u.DownVotes<1504 AND v.CreationDate>'2010-05-28 13:37:56'::timestamp AND v.CreationDate<'2013-06-09 18:54:04'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2011-07-09 11:43:35'::timestamp AND b.Date<'2013-12-25 16:57:38'::timestamp;

