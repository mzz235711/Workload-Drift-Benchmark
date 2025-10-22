/*+ NestLoop(p u b v)
 NestLoop(p u b)
 NestLoop(p u)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 IndexScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<157 AND p.CommentCount>32 AND p.CommentCount<38 AND u.DownVotes>57 AND u.DownVotes<651 AND v.CreationDate>'2012-01-06 07:46:38'::timestamp AND v.CreationDate<'2012-08-02 09:26:38'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2012-08-15 08:23:31'::timestamp AND b.Date<'2013-09-17 03:07:24'::timestamp;

