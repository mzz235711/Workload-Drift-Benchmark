/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>116 AND p.Score<184 AND p.CommentCount>3 AND p.CommentCount<44 AND u.DownVotes>18 AND u.DownVotes<1454 AND v.CreationDate>'2010-06-27 07:32:39'::timestamp AND v.CreationDate<'2010-11-01 02:43:49'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2011-03-17 22:21:03'::timestamp AND b.Date<'2012-10-10 12:00:04'::timestamp;

