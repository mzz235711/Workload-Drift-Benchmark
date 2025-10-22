/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<91 AND p.CommentCount>7 AND p.CommentCount<40 AND u.DownVotes>230 AND u.DownVotes<414 AND v.CreationDate>'2011-04-14 13:01:33'::timestamp AND v.CreationDate<'2013-05-31 17:24:43'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2012-12-05 19:53:21'::timestamp AND b.Date<'2014-09-07 08:52:39'::timestamp;

