/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<176 AND p.CommentCount>29 AND p.CommentCount<43 AND u.DownVotes>100 AND u.DownVotes<576 AND v.CreationDate>'2011-02-27 08:19:44'::timestamp AND v.CreationDate<'2014-02-27 15:25:28'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2011-02-21 22:57:19'::timestamp AND b.Date<'2012-10-29 08:35:16'::timestamp;

