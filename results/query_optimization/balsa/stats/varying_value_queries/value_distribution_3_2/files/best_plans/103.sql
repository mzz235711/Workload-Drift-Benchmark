/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<119 AND p.CommentCount>4 AND p.CommentCount<18 AND u.DownVotes>79 AND u.DownVotes<890 AND v.CreationDate>'2010-07-02 01:50:30'::timestamp AND v.CreationDate<'2013-10-29 03:11:36'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<8 AND b.Date>'2011-02-22 06:42:08'::timestamp AND b.Date<'2011-12-11 19:36:39'::timestamp;

