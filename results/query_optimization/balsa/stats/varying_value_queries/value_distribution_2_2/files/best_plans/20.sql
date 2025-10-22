/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<142 AND p.CommentCount>13 AND p.CommentCount<26 AND u.DownVotes>718 AND u.DownVotes<852 AND v.CreationDate>'2013-12-21 21:51:21'::timestamp AND v.CreationDate<'2014-04-20 09:06:10'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2011-10-25 11:04:15'::timestamp AND b.Date<'2012-05-14 11:40:21'::timestamp;

