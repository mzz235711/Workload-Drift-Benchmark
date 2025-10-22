/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>120 AND p.Score<137 AND p.CommentCount>7 AND p.CommentCount<17 AND u.DownVotes>500 AND u.DownVotes<1755 AND v.CreationDate>'2012-10-28 22:01:35'::timestamp AND v.CreationDate<'2013-10-30 16:17:02'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2013-01-26 23:31:48'::timestamp AND b.Date<'2013-06-02 04:39:43'::timestamp;

