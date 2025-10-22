/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<84 AND p.CommentCount>3 AND p.CommentCount<14 AND u.DownVotes>159 AND u.DownVotes<720 AND v.CreationDate>'2011-04-07 17:17:53'::timestamp AND v.CreationDate<'2011-06-14 19:30:20'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<9 AND b.Date>'2011-04-02 03:55:12'::timestamp AND b.Date<'2014-04-22 03:34:20'::timestamp;

