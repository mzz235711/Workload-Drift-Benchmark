/*+ NestLoop(p u b v)
 NestLoop(p u b)
 NestLoop(p u)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 IndexScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>43 AND p.Score<78 AND p.CommentCount>0 AND p.CommentCount<41 AND u.DownVotes>660 AND u.DownVotes<1706 AND v.CreationDate>'2010-12-09 13:47:55'::timestamp AND v.CreationDate<'2013-04-02 05:35:34'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2010-11-13 12:13:58'::timestamp AND b.Date<'2011-03-17 14:28:41'::timestamp;

