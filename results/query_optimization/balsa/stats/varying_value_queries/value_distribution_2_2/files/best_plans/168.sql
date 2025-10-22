/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 NestLoop(p v)
 IndexScan(b)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<114 AND p.CommentCount>10 AND p.CommentCount<22 AND u.DownVotes>49 AND u.DownVotes<947 AND v.CreationDate>'2009-12-21 08:10:42'::timestamp AND v.CreationDate<'2013-02-25 01:05:04'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2011-03-11 18:00:57'::timestamp AND b.Date<'2014-07-20 14:00:09'::timestamp;

