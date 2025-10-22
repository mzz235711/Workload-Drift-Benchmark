/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<87 AND p.CommentCount>10 AND p.CommentCount<17 AND u.DownVotes>289 AND u.DownVotes<589 AND v.CreationDate>'2011-12-31 04:40:22'::timestamp AND v.CreationDate<'2014-05-25 08:50:36'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2012-04-02 14:37:27'::timestamp AND b.Date<'2012-12-19 03:26:32'::timestamp;

