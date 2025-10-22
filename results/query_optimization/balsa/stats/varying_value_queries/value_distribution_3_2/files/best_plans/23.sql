/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>41 AND p.Score<165 AND p.CommentCount>0 AND p.CommentCount<40 AND u.DownVotes>141 AND u.DownVotes<1182 AND v.CreationDate>'2012-03-02 09:46:45'::timestamp AND v.CreationDate<'2014-03-15 06:36:52'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2011-07-26 19:24:36'::timestamp AND b.Date<'2014-05-14 06:26:10'::timestamp;

