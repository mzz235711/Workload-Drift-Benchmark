/*+ NestLoop(p v u b)
 NestLoop(p v u)
 MergeJoin(p v)
 IndexScan(p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((((p v) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<132 AND p.CommentCount>1 AND p.CommentCount<19 AND u.DownVotes>745 AND u.DownVotes<1385 AND v.CreationDate>'2009-10-29 21:26:57'::timestamp AND v.CreationDate<'2011-12-06 06:55:09'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2012-07-04 14:33:17'::timestamp AND b.Date<'2013-05-02 05:05:28'::timestamp;

