/*+ HashJoin(c ph pl p b v)
 HashJoin(c ph pl p b)
 MergeJoin(c ph pl p)
 MergeJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(ph)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(b)
 IndexScan(v)
 Leading((((c (ph (pl p))) b) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND p.Score>=-1 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=10 AND ph.CreationDate>='2011-01-27 14:57:16'::timestamp AND ph.CreationDate<='2014-08-29 11:12:32'::timestamp AND b.Date>='2010-08-02 02:34:56'::timestamp;

