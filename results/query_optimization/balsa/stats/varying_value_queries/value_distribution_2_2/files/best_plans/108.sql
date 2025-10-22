/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>32 AND p.Score<86 AND p.CommentCount>17 AND p.CommentCount<44 AND u.DownVotes>126 AND u.DownVotes<728 AND v.CreationDate>'2011-05-22 20:34:22'::timestamp AND v.CreationDate<'2014-05-30 02:43:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2013-05-02 20:45:09'::timestamp AND b.Date<'2013-11-29 17:26:18'::timestamp;

