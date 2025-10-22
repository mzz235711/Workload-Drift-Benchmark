/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<91 AND p.CommentCount>0 AND p.CommentCount<5 AND u.DownVotes>76 AND u.DownVotes<1125 AND v.CreationDate>'2011-01-21 04:56:43'::timestamp AND v.CreationDate<'2011-04-11 19:26:28'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2011-02-20 18:38:03'::timestamp AND b.Date<'2014-04-22 01:18:37'::timestamp;

