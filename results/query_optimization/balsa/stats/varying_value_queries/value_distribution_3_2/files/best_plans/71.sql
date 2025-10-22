/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<171 AND p.CommentCount>3 AND p.CommentCount<24 AND u.DownVotes>150 AND u.DownVotes<1514 AND v.CreationDate>'2011-09-13 23:33:54'::timestamp AND v.CreationDate<'2013-09-16 00:58:02'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2012-09-03 03:51:35'::timestamp AND b.Date<'2013-01-29 05:04:37'::timestamp;

