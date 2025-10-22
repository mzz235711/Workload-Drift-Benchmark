/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<159 AND p.CommentCount>5 AND p.CommentCount<31 AND u.DownVotes>765 AND u.DownVotes<1391 AND v.CreationDate>'2013-08-01 13:36:53'::timestamp AND v.CreationDate<'2014-07-09 15:36:44'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2013-02-11 00:57:10'::timestamp AND b.Date<'2013-05-18 09:11:20'::timestamp;

