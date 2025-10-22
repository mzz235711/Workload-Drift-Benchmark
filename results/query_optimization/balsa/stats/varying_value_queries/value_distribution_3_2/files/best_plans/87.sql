/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<185 AND p.CommentCount>6 AND p.CommentCount<28 AND u.DownVotes>59 AND u.DownVotes<1510 AND v.CreationDate>'2012-11-16 15:45:31'::timestamp AND v.CreationDate<'2013-11-20 01:55:47'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-01-17 04:47:28'::timestamp AND b.Date<'2012-12-24 03:01:38'::timestamp;

